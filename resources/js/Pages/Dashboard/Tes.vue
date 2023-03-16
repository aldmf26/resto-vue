<template lang="">
    <Layout h3="Tes">
        <!-- <div class="select">
                            <div class="col-lg-6">
                                <label for="">Show {{showMore}}</label>
                                <select v-model="showMore" @change="changeShowMore" name="" id="" class="ml-2 mr-2">
                                    <option value="">10</option>
                                    <option value="20" :selected="showMore === 20">20</option>
                                    <option value="50" :selected="showMore === 50">50</option>
                                    <option value="100" :selected="showMore === 100">100</option>
                                </select>
                                More
                            </div>
                            <div class="col-lg-4"></div>
                            <div class="col-lg-2">
                                <label for="">Search</label>
                                <input @keyup="searchAksi" style="height:30px;" type="text" v-model="search" class="form-control ">
                            </div>
                        </div> -->

                        <table class="table" id="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Email</th>
                                <th>nama</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(d, index) in karyawan" :key="index">
                                <td>{{ d.id }}</td>
                                <td>{{ d.email }}</td>
                                <td>{{ d.name }}</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- <Pagination :links="karyawan.links" /> -->
    </Layout>
</template>
<script>
import Layout from "../../Themes/Layout";
import Pagination from "../../Themes/Pagination";
import { Link } from "@inertiajs/inertia-vue3";
import { Inertia } from "@inertiajs/inertia";

export default {
    props: {
        karyawan: Object,
    },
    components: { Layout, Link, Pagination },
    data() {
        return {
            search: "",
            showMore: "",
            defaultShowMore: "10",
        };
    },
    methods: {
        searchAksi() {
            if (this.search != null || this.search != "") {
                Inertia.get(
                    "/tes",
                    { search: this.search },
                    {
                        preserveState: true,
                        replace: true,
                    }
                );
            }
        },
        changeShowMore() {
            Inertia.get(
                "/tes",
                { showMore: this.showMore },
                {
                    preserveState: true,
                }
            );
        },
    },
    
};
</script>
<style lang=""></style>
