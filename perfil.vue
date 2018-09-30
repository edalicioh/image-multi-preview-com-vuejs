<template>
    <div class="card">
        <div class="card-header">
            <h3>editar perfil</h3>
        </div>
        <div class="card-body">
            <div style="width: 128px ; height: 128px ; float: left ; margin: 1px ;border: black 1px solid"
                 v-for="(f,index) in preImg"
                 class="card">
                <a href="" data-toggle="modal" :data-target="`#linkInmage${index}`">
                    <img class="card-img" :src="f" alt="Card image" style="width: 128px ; height: 128px">
                </a>
                <div class="position-absolute">
                    <button class="ui basic button icon"
                            @click.prevent.stop="closeImage(index)"
                            style="margin-top: 90px; margin-left: 4px">
                        <i class="icon close"></i>
                    </button>
                </div>

                <div class="modal fade" :id="`linkInmage${index}`"
                     tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                    <modal
                        :f="f"
                        :preImg="preImg"
                    ></modal>
                </div>
            </div>
            <label for="files"
                   style="width: 128px ; height: 128px ; float: left ; margin: 1px ;border: black 1px solid"
            >
                <i class="icon cloud upload" style="font-size: 5em; padding-left: 25px;"></i>
            </label>
        </div>
        <div class="card-body">
            <form action="" enctype="multipart/form-data">

                <input @change="preview" type="file"  id="files" name="files[]" multiple style="display: none" />
            </form>

        </div>
    </div>
</template>

<script>
    export default {
        name: "perfil",
        data(){
          return{
              preImg:[]
          }
        },
        methods:{
            preview(e){
                let files = e.target.files;
                if(files){
                    let files_count = files.length;
                    for (let i=0; i<files_count; i++){
                        let reader = new FileReader();
                        reader.onload = e => {
                            this.preImg.push(e.target.result)
                        }
                        reader.readAsDataURL(files[i]);
                    }
                }
            },
            closeImage(index){
                this.preImg.splice(index, 1);
            }
        }
    }
</script>

<style scoped>

</style>
