<template lang="">
    <div
        :id="id"
        class="modal fade"
        role="dialog"
        aria-labelledby="myModalLabel"
        aria-hidden="true"
    >
        <div class="modal-dialog" :class="size" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">{{ title }}</h4>
                    <button
                        type="button"
                        class="close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                    >
                        <i data-feather="x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <slot />
                </div>
                <div class="modal-footer">
                    <button
                        type="button"
                        class="btn btn-light-secondary"
                        data-bs-dismiss="modal"
                    >
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Close</span>
                    </button>
                    <button
                        type="submit"
                        class="btn btn-light-primary font-bold"
                    >
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Save</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        title: {
            type: String,
            required: true,
        },
        id: {
            type: String,
            default: "exampleModal",
        },
        size: {
            type: String,
            default: "",
        },
    },
};
</script>
<style lang=""></style>
