///多语言资源id管理类.
class Ids {
  static String titleHome = 'title_home';
  static String titleMachine = 'titile_machine';
  static String titileNews = 'titile_news';
  static String titieSetting = 'titie_setting';
  static String titleTheme = 'title_theme';
  static const String titleLanguage = 'title_language';

}

///简单多语言资源.
Map<String, Map<String, String>> localizedSimpleValues = {
  'en': {
    Ids.titleHome: 'Home',
     Ids.titleLanguage: 'Language',
  },
  'zh': {
    Ids.titleHome: '主页',
  },
};

///多语言资源.
Map<String, Map<String, Map<String, String>>> localizedValues = {
  'en': {
    'US': {
      Ids.titleHome: 'Home',
      Ids.titleMachine: 'Machine',
      Ids.titileNews: 'News',
      Ids.titieSetting: 'Setting',
      Ids.titleTheme: 'Theme',
       Ids.titleLanguage: 'Language',
    }
  },
  'zh': {
    'CN': {
      Ids.titleHome: '首页',
      Ids.titleMachine: '设备',
      Ids.titileNews: '资讯',
      Ids.titieSetting: '设置'
      ,Ids.titleTheme: '主题',
       Ids.titleLanguage: '多语言',
    },
    'HK': {
      Ids.titleHome: '主頁',
    },
  }
};
