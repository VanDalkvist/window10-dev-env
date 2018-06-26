default['gusztavvargadr_consul']['server'] = {
  'version' => '1.0.1',
  'config' => {
    'options' => {
      'ui' => true,
      'server' => true,
      'bootstrap_expect' => 1,
    },
  },
  'client_addr' => '0.0.0.0',
}
