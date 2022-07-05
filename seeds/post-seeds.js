const { Post } = require('../models');

const postdata = [
  {
    title: 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',
    post_url: 'https://europa.eu/parturient/montes/nascetur/ridiculus/mus/etiam/vel.aspx',
    user_id: 1
  },
  {
    title: 'Nunc purus.',
    post_url: 'http://desdev.cn/enim/blandit/mi.jpg',
    user_id: 4
  },
  {
    title: 'Morbi non quam nec dui luctus rutrum.',
    post_url: 'http://ucla.edu/consequat/nulla.html',
    user_id: 1
  },
  {
    title: 'Duis ac nibh.',
    post_url: 'http://theguardian.com/dui/vel/nisl/duis/ac/nibh.aspx',
    user_id: 3
  },
  {
    title: 'Curabitur at ipsum ac tellus semper interdum.',
    post_url: 'https://reverbnation.com/ligula/sit.jpg',
    user_id: 5
  },
  {
    title: 'In hac habitasse platea dictumst.',
    post_url: 'http://china.com.cn/lectus/vestibulum.json',
    user_id: 3
  },
  {
    title: 'Donec dapibus.',
    post_url: 'https://instagram.com/ac/neque/duis/bibendum/morbi/non.xml',
    user_id: 4
  },
  {
    title: 'Nulla tellus.',
    post_url: 'https://lycos.com/natoque/penatibus/et.html',
    user_id: 3
  },
  {
    title:
      'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',
    post_url: 'https://paginegialle.it/mattis/egestas.jsp',
    user_id: 2
  },
  {
    title: 'In hac habitasse platea dictumst.',
    post_url: 'http://wikia.com/turpis/eget.jpg',
    user_id: 4
  }
 
];

const seedPosts = () => Post.bulkCreate(postdata);

module.exports = seedPosts;