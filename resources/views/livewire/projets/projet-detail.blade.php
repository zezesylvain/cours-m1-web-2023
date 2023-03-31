<div class="col-12 col-md-12">
    <h3>Le projet</h3>
    <div @click="editDescription = !editDescription" class="text-bold text-blue">
        Description:
        <span class="text-small">
            Cliquez pour
            <span x-text="editDescription ? 'Femer' : 'Modifier'"></span>
        </span>
        </span>
    </div>
    <template x-if="!editDescription">
        <p x-text="lesProjets[monProjet]['description']"></p>
    </template>
    <template x-if="editDescription">
        <textarea x-model="lesProjets[monProjet]['description']" rows="10" class="form-control"></textarea>
    </template>
    <div @click="editCommentaire = !editCommentaire" class="text-bold text-blue">
        Commentaire:
        <span class="text-small">
            Cliquez pour
            <span x-text="editCommentaire ? 'Femer' : 'Modifier'"></span>
        </span>
    </div>

    <template x-if="!editCommentaire">
        <p x-text="lesProjets[monProjet]['commentaire']"></p>
    </template>
    <template x-if="editCommentaire">
        <textarea x-model="lesProjets[monProjet]['commentaire']" rows="10" class="form-control"></textarea>
    </template>
    <template x-if="!projetModifie()">
        <button class="btn btn-success" style="width:100%;" @click="validerMonProjet()">Enregistrez</button>
    </template>
</div>
