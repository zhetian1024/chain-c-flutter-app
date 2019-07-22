///多语言资源id管理类.
class Ids {
  static String titleHome = 'title_home';
  static String titleMachine = 'titile_machine';
  static String titileNews = 'titile_news';
}

///简单多语言资源.
Map<String, Map<String, String>> localizedSimpleValues = {
  'en': {
    Ids.titleHome: 'Home',
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
      Ids.titleMachine:'Machine',
      Ids.titileNews:'News'
    }
  },
  'zh': {
    'CN': {Ids.titleHome: '首页', Ids.titleMachine: '设备', Ids.titleMachine: '资讯'},
    'HK': {
      Ids.titleHome: '主頁',
    },
  }
};
