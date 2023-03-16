<template lang="">
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-end">
            <template v-for="link in links">
                <li class="page-item" :class="{ active: link.active }">
                    <Link
                        class="page-link"
                        :href="link.url"
                        v-html="link.label"
                    ></Link>
                </li>
            </template>
        </ul>
    </nav>
</template>
<script>
import { Link } from "@inertiajs/inertia-vue3";
export default {
    props: {
        links: Array,
    },
    components:{
        Link
    }
};
</script>
<style lang=""></style>
