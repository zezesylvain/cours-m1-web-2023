<div>
    <div x-data="{
        nomUe: @entangle('nomUe').defer,
        codeUe: @entangle('codeUe').defer,
        lesEcues: @entangle('lesEcues').defer,
        chEcue: @entangle('chEcue').defer,
        tabInitiale: @entangle('tabInitiale').defer,
        ueOK: false,
        compteur: 0,
        checkInfo(){
            this.ueOK = Boolean(this.nomUe) && Boolean(this.codeUe);
        },
        plus1(ind){
            return parseInt(ind)+1;
        },
        incrementerCompteur(index){
            this.compteur = Math.max(parseInt(index)+1, this.compteur);
        },
        ajouterEcue(index){
            if(this.compteur <= index){
                this.incrementerCompteur(index);
                this.lesEcues[this.compteur] = {'nom': '', 'code': '', 'cm': 0, 'td': 0, 'tp': 0};
            }
        },
        EnregisterData: async function(){
                await @this.storeUE().then(value => {
                    data = JSON.parse(value);
                });
            }
    }"
    x-init="()=>{
        lesEcues[compteur] = {'nom': '', 'code': '', 'cm': 0, 'td': 0, 'tp': 0};
    }">

        <div class="row">
            <div class="col-md-4">
                <h3>
                    UE
                </h3>
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label for="nomUe"> Nom</label>
                        <input type="text" x-model="nomUe" class="form-control" placeholder="Nom UE" x-on:change="checkInfo()">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="codeUe"> Code</label>
                        <input type="text" x-model="codeUe"class="form-control" placeholder="Nom UE" x-on:change="checkInfo()">
                    </div>
                </div>
            </div>
            <template x-if="ueOK">
                <div class="col-md-8">
                    <h3>
                        ECUEs
                    </h3>
                    <template x-for="(ecue, index) in lesEcues" :key="index">
                        <div class="row">
                            <div class="col-md-12">
                                <h4 x-text="'Ecue '+ plus1(index)"></h4>
                            </div>
                            <div class="col-md-11">
                                <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" x-model="lesEcues[index].nom" class="form-control" placeholder="Nom ECUE">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" x-model="lesEcues[index].code" class="form-control" placeholder="Code ECUE">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" x-model="lesEcues[index].cm" class="form-control" placeholder="cm">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" x-model="lesEcues[index].td" class="form-control" placeholder="td">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" x-model="lesEcues[index].tp" class="form-control" placeholder="tp">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <button class="btn btn-success" style="width: 100%;" @click="ajouterEcue(index)">OK</button>
                            </div>
                        </div>
                    </template>
                </div>
            </template>
        </div>

    <button class="btn btn-primary" style="width: 100%;" @click="EnregisterData()">Enregistrez les données</button>

    </div>

</div>
