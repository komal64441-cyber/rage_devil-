import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.ragedevil.game',
  appName: 'Rage Devil',
  webDir: 'dist',
  server: {
    androidScheme: 'https'
  },
  android: {
    allowMixedContent: true
  },
  plugins: {
    SplashScreen: {
      launchShowDuration: 1000,
      backgroundColor: '#05060a',
      showSpinner: false,
    },
    AdMob: {
      appId: 'ca-app-pub-4680298321698683~9266585690',
    }
  }
};

export default config;
