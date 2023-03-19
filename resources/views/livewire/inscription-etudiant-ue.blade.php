<div>
    <div x-data="{
        etudiants: @entangle('etudiants').defer,
        lesEtudiants: @entangle('lesEtudiants').defer,
        ues: @entangle('ues').defer,
        lesUes: @entangle('lesUes').defer,
        lesEId: @entangle('lesEId').defer,
        lesEIdInGroup: @entangle('lesEIdInGroup').defer,
        lesUeId: @entangle('lesUeId').defer,
        lesUeIdInGroup: @entangle('lesUeIdInGroup').defer,
        compteurEtudiant: 0,
        compteurUe: 0,
        lesCles: [],
        message: '',
        addEtudiant2Group(iid){
            this.lesEIdInGroup.push(iid);
            this.compteurEtudiant++;
        },
        removeEtudiant2Group(iid){
            this.lesEIdInGroup.splice(this.lesEIdInGroup.indexOf(iid), 1);
            this.compteurEtudiant--;
        },
        addUe2Group(iid){
            this.lesUeIdInGroup.push(iid);
            this.compteurUe++;
        },
        removeUe2Group(iid){
            this.lesUeIdInGroup.splice(this.lesUeIdInGroup.indexOf(iid), 1);
            this.compteurUe--;
        },
        inscrireEtudiantDansUe: async function()
        {
            await @this.inscrireEtudiantDansUe().then(value => {
                data = JSON.parse(value);
                response = data.response;
                this.message = data.message;
            });

        },
    }"
    x-init="()=>{

    }">
        <div class="row">
            <div class="col-12 text-center">
                <div class="alert alert-danger" role="alert">
                    <span> Attention: Ceci effacera les anciennes données</span>
                </div>
            </div>
            <div class="col-md-3">
                <h3>
                    Etudiants
                </h3>
                <div>
                    <ol>
                        <template x-for="iid in lesEId">
                            <template x-if="!lesEIdInGroup.includes(iid)">
                                <li>
                                    <span x-text="etudiants[iid]['nom'] + ' ' + etudiants[iid]['prenoms']"
                                        @click="addEtudiant2Group(iid)"></span>
                                </li>
                            </template>

                        </template>
                    </ol>

                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <h3>
                            Groupe d'étudiants
                        </h3>
                        <div>
                            <ol>
                                <template x-for="iid in lesEIdInGroup">
                                    <li>
                                        <span class="lien" x-text="etudiants[iid]['nom'] + ' ' + etudiants[iid]['prenoms']"
                                            @click="removeEtudiant2Group(iid)"></span>
                                    </li>
                                </template>
                            </ol>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3>
                            Groupe d'UEs
                        </h3>
                        <div>
                            <ol>
                                <template x-for="iid in lesUeIdInGroup">
                                    <li>
                                        <span class="lien" x-text="ues[iid]['nom'] + ' (' + ues[iid]['code'] + ')'"
                                            @click="removeUe2Group(iid)"></span>
                                    </li>
                                </template>
                            </ol>

                        </div>
                    </div>
                    <template x-if="compteurEtudiant && compteurUe">
                        <div class="col-md-12">
                            <button class="btn btn-primary btn-lg" style="width: 100%"
                                @click="inscrireEtudiantDansUe()">
                                Ajoutez
                            </button>
                        </div>
                    </template>

                </div>
            </div>

            <div class="col-md-3">
                <h3>
                    UEs
                </h3>
                <div>
                    <ol>
                        <template x-for="iid in lesUeId">
                            <template x-if="!lesUeIdInGroup.includes(iid)">
                                <li>
                                    <span class="lien" x-text="ues[iid]['nom'] + ' (' + ues[iid]['code'] + ')'"
                                        @click="addUe2Group(iid)"></span>
                                </li>
                            </template>

                        </template>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
