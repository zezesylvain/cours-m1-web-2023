<div>
    <div x-data="{
        etudiants: @entangle('etudiants').defer,
        lesEtudiants: @entangle('lesEtudiants').defer,
        ues: @entangle('ues').defer,
        lesUes: @entangle('lesUes').defer,
        etudiantsDesUe: @entangle('etudiantsDesUe').defer,
        compteurAdd: 0,
        currentUe: 0,
        compteurRemove: 0,
        currentEtudiants: [],
        etudiantNotInCurrentUe: [],
        lesCles: [],
        message: '',

        selectUe(iid){
            if(iid != this.currentUe){
                this.message = '';
            }
            if(this.lesUes.includes(iid)){
                this.currentUe = iid;
                this.makeData();
            }
        },
        makeData(){
            this.currentEtudiants = [];
            let students = this.etudiantsDesUe[this.currentUe];
            this.currentEtudiants = students;
            this.etudiantNotInCurrentUe = this.getDifference(this.lesEtudiants, this.currentEtudiants);
        },
        getDifference(a, b) {
            return a.filter(element => {
                return !b.includes(element);
            });
        },
        addEtudiantInUe(iid){
            if(this.etudiantNotInCurrentUe.includes(iid)){
                this.currentEtudiants.push(iid);
                let students = this.currentEtudiants;
                this.etudiantsDesUe[this.currentUe] = students;
                this.compteurAdd++;
                this.selectUe(this.currentUe);
            }

        },
        removeEtudiantInUe(iid){
            this.currentEtudiants.splice(this.currentEtudiants.indexOf(iid), 1);
            this.compteurRemove++;
            let students = this.currentEtudiants;
            this.etudiantsDesUe[this.currentUe] = students;
            this.selectUe(this.currentUe);
        },
        inscrireEtudiantDansUe: async function()
        {
            await @this.storeData().then(value => {
                data = JSON.parse(value);
                response = data.response;
                this.message = data.message;
                this.compteurAdd = 0;
                this.compteurRemove = 0;
                this.selectUe(this.currentUe);
            });

        }
    }" x-init="()=>{
        selectUe(lesUes[0]);
    }">
        <div class="row">
            <template x-if="Boolean(message)">
                <div class="col-12 text-center" >
                    <div class="alert alert-success" role="alert">
                        <span x-text="message"></span>
                    </div>
                </div>
            </template>
            <div class="col-md-4">
                <h3>
                    UEs
                </h3>
                <div>
                    <ol>
                        <template x-for="iid in lesUes">
                            <li x-bind:class=" currentUe == iid ? 'list-group-item active ' : 'list-group-item ' ">
                                <span class="lien" x-text="ues[iid]['nom'] + ' (' + ues[iid]['code'] + ')'"
                                    @click="selectUe(iid)"></span>
                            </li>
                        </template>
                    </ol>
                </div>
            </div>

            <div class="col-md-4">
                <h3>
                    Etudiants
                </h3>
                <div>
                    <ol>
                        <template x-for="iid in currentEtudiants">
                                <li>
                                    <span x-text="etudiants[iid]['nom'] + ' ' + etudiants[iid]['prenoms']"
                                        @click="removeEtudiantInUe(iid)"></span>
                                </li>
                        </template>
                    </ol>

                </div>
            </div>
{{----}}
            <div class="col-md-4">
                <h3>
                    Groupe d'étudiants
                </h3>
                <div>
                    <ol>
                        <template x-for="iid in etudiantNotInCurrentUe">
                            <li>
                                <span class="lien"
                                    x-text="etudiants[iid]['nom'] + ' ' + etudiants[iid]['prenoms']"
                                    @click="addEtudiantInUe(iid)"></span>
                            </li>
                        </template>
                    </ol>
                </div>
            </div>
            {{----}}
            <template x-if="Boolean(compteurAdd + compteurRemove)">
                <div class="col-md-12">
                    <button class="btn btn-primary btn-lg" style="width: 100%"
                        @click="inscrireEtudiantDansUe()">
                        Enregistrez
                    </button>
                </div>
            </template>
        </div>
    </div>
</div>
