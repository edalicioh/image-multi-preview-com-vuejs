<template>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="icon close"></i></span>
                </button>
                <img class="card-img" :src="f" alt="Card image" style="width: 470px; height: 470px" >
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "modal",
        props:['f']
    }
</script>

<style scoped>

</style>
