<template lang="">
    <div id="app">
        <div id="main" class="layout-horizontal">
            <Navbar />
            
            <slot />
        </div>
            
    </div>
</template>
<script>
import { Link } from '@inertiajs/inertia-vue3';
import Navbar from './Navbar'


export default {
    components: {
        Link,Navbar
    },
    mounted() {
        $(document).ready(function () {
            $("#table").DataTable();
         
        });
    },
};
</script>
<style lang=""></style>
