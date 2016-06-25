exports.config = {
  files: {
    javascripts: {
      joinTo: "js/app.js",
      order: {
        before: [
          "web/static/vendor/js/jquery.js",
          "web/static/vendor/js/bootstrap.js",
        ]
      }
    },
    stylesheets: {
      joinTo: "css/app.css"
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  conventions: {
    assets: /^(web\/static\/assets)/
  },

  // Phoenix paths configuration
  paths: {
    watched: [
      "web/static",
      "test/static",
      "web/elm/FoodPoisoning.elm"
    ],

    public: "priv/static"
  },

  plugins: {
    elmBrunch: {
      elmFolder: 'web\/elm',
      mainModules: ['FoodPoisoning.elm'],
      outputFolder: '..\/static\/vendor'
    },
    babel: {
      ignore: [/web\/static\/vendor/]
    }
  },

  modules: {
    autoRequire: {
      "js/app.js": ["web/static/js/app"]
    }
  },

  npm: {
    enabled: true,
    whitelist: ["phoenix", "phoenix_html"]
  }
};
