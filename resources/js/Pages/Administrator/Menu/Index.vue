<template lang="">
    <Layout>
        <div class="content-wrapper container card">
            <div class="page-heading card-header">
                <div class="row">
                    <div class="col-lg-6">
                        <h3>Data Menu Takemori</h3>
                    </div>
                    <div class="col-lg-6">
                        <button
                            @click="modalMenu"
                            class="float-end btn btn-light-primary font-bold"
                        >
                            <i class="fas fa-plus"></i>
                            Menu
                        </button>
                    </div>
                </div>
            </div>
            <div class="page-content container mb-5 card-body">
                <section class="row">
                    <table class="table" id="table">
                        <thead>
                            <tr>
                                <th>Kode Menu</th>
                                <th>Kategori</th>
                                <th>Level</th>
                                <th>Nama Menu</th>
                                <th>Tipe</th>
                                <th>Station</th>
                                <th>ON/OFF</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(d, index) in menu" :key="index">
                                <td>{{ d.kd_menu }}</td>
                                <td>{{ d.kategori }}</td>
                                <td>{{ d.handicap }} ({{ d.point }} Point)</td>
                                <td>{{ d.nm_menu }}</td>
                                <td>{{ d.tipe }}</td>
                                <td>{{ d.nm_station }}</td>
                                <td>
                                    <Toggle
                                        v-model="value"
                                        on-value="ON"
                                        off-value="OFF"
                                        @change="
                                            toggleAktif(d.id_menu, d.aktif)
                                        "
                                    />
                                    {{ value }}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </section>
            </div>
        </div>

        <form @submit.prevent="submitForm">
        <Modal :title="'Tambah Menu'" :id="'modalMenu'" :size="'modal-lg'">
            <div class="row">
                <div class="col-lg-2">
                    <div class="form-group">
                        <label for="">Kode</label>
                        <input
                            type="text"
                            v-model="form.kd_menu"
                            readonly
                            class="form-control"
                        />
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="">Tipe</label>
                        <select v-model="form.tipe" class="form-control" id="">
                            <option value="">- Pilih -</option>
                            <option value="food">Food</option>
                            <option value="drink">Drink</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="form-group">
                        <label for="">Kategori</label>
                        <select
                            v-model="form.id_kategori"
                            class="form-control select2"
                            id=""
                        >
                            <option value="">- Pilih Kategori -</option>
                            <option
                                v-for="d in kategori"
                                value="{{d.kd_kategori}}"
                            >
                                {{ d.kategori }}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="">Nama Menu</label>
                        <input
                            type="text"
                            v-model="form.nm_menu"
                            class="form-control"
                        />
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="">Lvl Point</label>
                        <select
                            v-model="form.id_handicap"
                            class="form-control select2"
                            id=""
                        >
                            <option value="">- Pilih Lvl -</option>
                            <option
                                v-for="d in level"
                                value="{{d.id_handicap}}"
                            >
                                {{ d.handicap }} ({{ d.point }} Point)
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="">Station</label>
                        <select
                            v-model="form.id_station"
                            class="form-control select2"
                            id=""
                        >
                            <option value="">- Pilih station -</option>
                            <option
                                v-for="d in station"
                                value="{{d.id_station}}"
                            >
                                {{ d.nm_station }}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="">Distribusi</label>
                        <select
                            v-model="form.id_distribusi"
                            class="form-control select2"
                            id=""
                        >
                            <option value="">- Pilih Distribusi -</option>
                            <option
                                v-for="d in distribusi"
                                value="{{d.id_distribusi}}"
                            >
                                {{ d.nm_distribusi }}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="">Harga</label>
                        <input type="text" v-model="form.harga" class="form-control" />
                    </div>
                </div>
                <div class="col-lg-2">
                    <label for="">Aksi</label><br>
                    <button
                        @click="plusDistribusi"
                        class="btn btn-light-info font-bold"
                    >
                        <i class="fas fa-plus"></i>
                    </button>
                </div>
                <template v-for="(r, index) in rowsDistribusi">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="">Distribusi</label>
                            <select
                                v-model="form.id_distribusi"
                                class="form-control select3"
                                id=""
                            >
                                <option value="">- Pilih Distribusi -</option>
                                <option
                                    v-for="d in distribusi"
                                    value="{{d.id_distribusi}}"
                                >
                                    {{ d.nm_distribusi }}
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="">Harga</label>
                            <input
                                type="text"
                                v-model="form.harga"
                                class="form-control"
                            />
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <label for="">Aksi</label><br>
                        <button
                            @click="removeDistribusi(index)"
                            class="btn btn-light-danger font-bold"
                        >
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </template>
                <div class="col-lg-12"></div>
            </div>
        </Modal>
    </form>
    </Layout>
</template>
<script>
import Layout from "../../../Themes/Layout";
import Modal from "../../../Themes/Modal";
import Toggle from "@vueform/toggle";
import { reactive } from 'vue'

export default {
    
    props: {
        menu: Object,
        kategori: Object,
        level: Object,
        station: Object,
        distribusi: Object,
    },
    data() {
        return {
            value: "off",
            rowsDistribusi: [],
            form: {
                kd_menu: '12',
                id_kategori: '',
                id_handicap: '',
                id_level: '',
                tipe: '',
                nm_menu: '',
                id_station: '',
                id_distribusi: [],
                harga: [],
            },
            
        };
    },
    components: {
        Layout,
        Toggle,
        Modal,
    },
    methods: {
        toggleAktif(id, aktif) {
            console.log(this.value);
        },
        modalMenu() {
            $(document).ready(function () {
                $("#modalMenu").modal("show");
            });
        },
        plusDistribusi() {
            this.rowsDistribusi.push({ value: "" });
        },
        removeDistribusi(index) {
            this.rowsDistribusi.splice(index, 1);
        },
        async submitForm() {
            console.log(this.form)
        }
    },
    mounted() {
        $(document).ready(function () {
            $(".select2").select2({
                dropdownParent: $('#modalMenu .modal-content')
            })
        });
    },
};
</script>
<style src="@vueform/toggle/themes/default.css"></style>
