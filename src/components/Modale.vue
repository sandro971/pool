<template>
    <section class="modale" v-if="!isInstalled">
        <div class="container container--center">
            <div class="top">
                <h1>Installer</h1>
                <div class="close" @click="close">
                    <i class="fas fa-times"></i>
                </div>
            </div>
            <p>Installer la micro démo pour avoir un avant gout du PWA</p>
            <div class="button button--small-rounded" @click="install">
                Installer
            </div>
        </div>
    </section>
</template>
<script>

export default {
    name: 'Modale',
    components: {

    },
    data() {
        return {
            showModale:false,
                deferredPrompt: null,
                isInstalled: false
            };
        },
        created() {
            this.isInstalled =  window.matchMedia('(display-mode: standalone)').matches

            window.addEventListener("beforeinstallprompt", e => {
                e.preventDefault();
                // Stash the event so it can be triggered later.
                this.deferredPrompt = e;
                console.log('beforeinstallprompt')
            });
            window.addEventListener("appinstalled", () => {
                this.deferredPrompt = null;
                console.log('appinstalled')
                this.isInstalled = true
            });
        },
        methods: {
            async install() {
                if(this.deferredPrompt){
                    this.deferredPrompt.prompt();
                }
                else{
                    console.log('can\'t install')
                }
            },
            close(){
                this.isInstalled = true
            }
        }
    }
</script>
