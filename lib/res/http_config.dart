/**
 * 本地开发机IP
 */

const String LOCAL_MACHINE_IP = '192.168.0.111';

/**
 * AWS 配置文件
 */
const AWSCONFIG = {
  'Region': 'cn-north-1',
  'S3_PRIVATE': {'Bucket': 'chain-c-app', 'Region': 'cn-north-1'},
  'S3_PUBLIC': {'Bucket': 'weixin-mp-public', 'Region': 'cn-north-1'},
  // S3 服务终点
  'S3_SERVICE_ENDPOINT': 's3.cn-north-1.amazonaws.com.cn',
  'Api': {
    // TODO: AWS Sam，调试请更新为本地IP
    'EndPoint': 'https://api.chain-c.cn/private/'
    // EndPoint: 'http://' + LOCAL_MACHINE_IP + ':3000',
  },
  'ApiPublic': {
    // TODO: AWS Sam，调试请更新为本地IP
    'EndPoint': 'https://api.chain-c.cn/public'
    // EndPoint: 'http://' + LOCAL_MACHINE_IP + ':3000'
  },
  'STORAGE_KEY': {'AWS_CREDENTIALS': 'aws-credentials'},
  'ES': {
    'EndPoint':
        'search-chaincsearch-iwubahee72bbicjjgud4p7egny.cn-north-1.es.amazonaws.com.cn',
    'Region': 'cn-north-1'
  }
};
const imageContentApproval = {
  'PREFIX': 'baiduyun',
  'BaiduyunImageContentApproval': 'imageApproval'
};
