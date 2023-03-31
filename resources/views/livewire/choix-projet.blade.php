<div x-data="{
    lesProjets: @entangle('lesProjets').defer,
    lesEtudiants: @entangle('lesEtudiants').defer,
    projets: @entangle('projets').defer,
    monProjet: @entangle('monProjet').defer,
    etudiants: @entangle('etudiants').defer,
    currentProject: @entangle('currentProject').defer,
    eid: @entangle('eid').defer,
    roleId: @entangle('roleId').defer,
    message: '',
    changement: 0,
    etudiantDuProjet: 0,
    cssClass:'',
    editDescription: false,
    editCommentaire: false,
    commentaire: '',
    description: '',
    selectItem(item){
        if(this.currentProject != item){
            this.message = '';
        }
        if(this.projets.includes(item)){
            this.currentProject = item;
            this.counterMessage++;
        }
        this.projectUser();
    },
    projectUser(){
        let edp = this.lesProjets[this.currentProject]['etudiant_id'];
        this.etudiantDuProjet = Boolean(edp) ? edp : 0;
        this.cssClass = this.etudiantDuProjet == this.eid ? ' moi' : '';
    },

    classCss(pid){
        if(pid == this.monProjet){
            return 'moi';
        }
        else{
            return '';
        }
    },
    projetModifie(){
        rep1 = this.lesProjets[this.monProjet]['description'] == this.description;
        rep2 = this.lesProjets[this.monProjet]['commentaire'] == this.commentaire;
        return rep1 && rep2;
    },
    validerMonProjet: async function(){
        await @this.validerMonProjet().then(value => {
            data = JSON.parse(value);
            response = data.response;
            this.message = data.message;
            this.initialisation();
        });
    },
    choisirProjet: async function(){
        await @this.choisirProjet().then(value => {
            data = JSON.parse(value);
            response = data.response;
            this.message = data.message;
            this.monProjet = this.currentProject;
            this.initialisation();
        });
    },
    changerDeProjet: async function(){
        await @this.changerDeProjet().then(value => {
            data = JSON.parse(value);
            response = data.response;
            this.message = data.message;
            this.monProjet = this.currentProject;
            this.initialisation();
        });
    },
    initialisation(){
        this.description = '';
        this.commentaire = '';
        if(Boolean(this.monProjet)){
            let descr = this.lesProjets[this.monProjet]['description'] ;
            let comment = this.lesProjets[this.monProjet]['commentaire'];
            this.description = descr;
            this.commentaire = comment;
        }

    }
}"
x-init="()=>{
    currentProject = projets[0];
    selectItem(currentProject);
    initialisation();

}">
<div class="row">
    <template x-if="Boolean(message)">
        <div class="col-12 text-center">
            <div class="alert alert-success" role="alert">
                <span x-text="message"></span>
            </div>
        </div>
    </template>
    <div class="col-md-4">
        <h3>
            Les Projets
        </h3>
        <div>
            <ol>
                <template x-for="iid in projets">
                    <li x-bind:class=" currentProject == iid ? 'list-group-item active ' + classCss(iid) : 'list-group-item '+ classCss(iid) "
                        @click="selectItem(iid)">
                        <span class="lien" x-text="lesProjets[iid]['nom']"></span>
                    </li>
                </template>
            </ol>
        </div>
    </div>

    <div class="col-md-8">
        <div class="row">
            <div class="col-6 col-md-6">
                <template x-if="!Boolean(etudiantDuProjet)">
                    <div>
                        <template x-if="Boolean(monProjet)">
                            <template x-if="monProjet != currentProject">
                                <div>
                                    <h3>
                                        Vous pouvez changer et choisir ce projet
                                    </h3>
                                    <p>
                                        <button @click="changerDeProjet()"
                                            class="btn btn-primary" style="width:100%"> Choisir</button>
                                    </p>
                                </div>
                            </template>
                        </template>
                        <template x-if="!Boolean(monProjet)">
                            <div>
                                <h3>
                                    Vous pouvez choisir ce projet
                                </h3>
                                <p>
                                    <button class="btn btn-success" style="width:100%" @click="choisirProjet()"> Choisir</button>
                                </p>
                            </div>
                        </template>
                    </div>
                </template>
                <template x-if="parseInt(etudiantDuProjet) >= 1">
                    <div>
                        <h3>
                            Projet choisi par: <span x-text="lesEtudiants[etudiantDuProjet]['nom'] + ' ' + lesEtudiants[etudiantDuProjet]['prenoms']"></span>
                        </h3>

                    </div>
                </template>
            </div>
            <template x-if="currentProject != monProjet ">
                @include("livewire.projets.projet-detail-other")
            </template>
            <template x-if="currentProject == monProjet ">
                @include("livewire.projets.projet-detail")
            </template>
        </div>

    </div>
    {{----}}
    <div class="col-md-4">
        <h3>

        </h3>
        <div>

        </div>
    </div>
    {{----}}
    <template x-if="Boolean(changement)">
        <div class="col-md-12">
            <button class="btn btn-primary btn-lg" style="width: 100%" @click="()">
                Enregistrez
            </button>
        </div>
    </template>
</div>

</div>
