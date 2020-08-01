'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "6580e602897c987911811039a5043098",
"assets/assets/cchef.png": "bc9445fc5f4de221a3801ad949011717",
"assets/assets/code.png": "e4e2e6a3bdd27b1036df8dd993df7f6c",
"assets/assets/darkBricks.jpg": "6d99add5b816e04a0e7dc4cee8eeb3dc",
"assets/assets/darkSkill.png": "e003c786885b7776ede9208942063193",
"assets/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/fonts/LilyScriptOne-Regular.ttf": "155a6fa623a8685497dbd7d7617161a8",
"assets/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/icons/coding.png": "18188cbf3b72168b388ae23e143f1022",
"assets/assets/icons/dsaIcon.png": "227e66d4718b9382ce8cef10814980dc",
"assets/assets/icons/flutterIcon.png": "023350440992ed7824e773882888f366",
"assets/assets/icons/javaIcon.png": "b3f323fb65c177857e626ad98fa1db3f",
"assets/assets/icons/python.png": "14a207a229063b7f1156bf01dd35f0e2",
"assets/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"assets/assets/myAvatar.jpg": "7c48788140d793f8ee4f141705359287",
"assets/assets/projectimg/bmi1.png": "981a992b79665bfd51cbe26564bd5800",
"assets/assets/projectimg/clima1.png": "7c0309de0bc5b7c2ef2a310eba326683",
"assets/assets/projectimg/CoronaCount2.png": "5ac84ad4d9b843da4cb2b11596df2431",
"assets/assets/projectimg/flashChat1.png": "617e9d0ab461b04323c56441791f59be",
"assets/assets/projectimg/quiz2.png": "bfbbe47d2b6f4334c2f02a7e35261d59",
"assets/assets/skillimg/cp.png": "e329e68a89331427e66533c1c32799e8",
"assets/assets/skillimg/dsa.png": "efb5866996d313e1c10587d7425150ca",
"assets/assets/skillimg/flutter.png": "c3b54385c8115bc4c81ea00d06a4966c",
"assets/assets/skillimg/java.png": "3217ff8f5e3572a441e662ad850f78b2",
"assets/assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/FontManifest.json": "0b1614051b8ea2a5d39c9a0b072fda06",
"assets/fonts/MaterialIcons-Regular.otf": "a68d2a28c526b3b070aefca4bac93d25",
"assets/NOTICES": "2e5f09744742e9e41b08896d0609486a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"index.html": "d11429a98afbb1c6f223bc2aaec4246c",
"/": "d11429a98afbb1c6f223bc2aaec4246c",
"main.dart.js": "ca81682ef67b5adde2e9373fbfe08ad8"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
