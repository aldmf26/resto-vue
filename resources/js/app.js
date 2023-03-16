require('./bootstrap');

import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/inertia-vue3';
import { InertiaProgress } from '@inertiajs/progress';

window.$ = window.jQuery = require('jquery');
import "datatables.net-bs5/js/dataTables.bootstrap5.min.js"
import "datatables.net-bs5/css/dataTables.bootstrap5.min.css"

import 'select2/dist/css/select2.min.css'
import 'select2/dist/js/select2.min.js'

const appName = window.document.getElementsByTagName('title')[0]?.innerText || 'Laravel';

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: (name) => require(`./Pages/${name}.vue`),
    setup({ el, app, props, plugin }) {
        return createApp({ render: () => h(app, props) })
            .use(plugin)
            .mixin({ methods: { route } })
            .mount(el);
    },
});

InertiaProgress.init({ color: '#FF0000' });
