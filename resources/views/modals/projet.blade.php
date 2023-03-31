@php
$width = $width ?? 400;
$padding = $padding ?? 40;
$totalWidth = $width + $padding;
$maxHeight = $maxHeight ?? 100;
$modalName = 'newProject';
@endphp
<section id="{{ $modalName ?? 'modal' }}">
    <div class="modal fade" id="{{ $modalName ?? 'modal' }}-modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content" style="width: {{ $totalWidth }}px;">
                <div class="modal-header" align="center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span class="fa fa-times" aria-hidden="true"></span>
                    </button>
                </div>
                <div>
                    <div class="section nobg full-screen nopadding nomargin">
                        <div class="container-fluid vertical-middle divcenter clearfix">

                            <div class="card divcenter noradius noborder"
                                style="width: {{ $width }}px; background-color: rgba(255,255,255,0.93);">
                                <div class="card-header" style="padding: 0px; max-height: {{ $maxHeight }}px;">
                                    @yield('modalHeader')
                                </div>
                                <div class="card-body" style="padding: {{ $padding }}px;">

                                    <div class="row">
                                        <div class="col-md-6 form-group">
                                            <label for="nom">Nom du Projet</label> <br>
                                            <input type="text" x-model="newProject['nom']" class="form-control">
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label for="title">Titre du Projet</label> <br>
                                            <input type="text" x-model="newProject['title']" class="form-control">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <label for="description">Description du Projet</label> <br>
                                            <textarea name="" x-model="newProject['description']" rows="10" class="form-control"></textarea>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <label for="commentaire">Commentaire</label> <br>
                                            <textarea name="" x-model="newProject['commentaire']" rows="10" class="form-control"></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="btn btn-primary btn-lg" style="width: 100%" @click="validerNewProject()" data-dismiss="modal">
                                                Validez
                                            </button>
                                        </div>
                                    </div>

                                    <div class="line line-sm"></div>
                                </div>
                                <div class="card-Footer" style="padding: 0px; max-height: {{ $maxHeight }}px;">
                                    <div class="center dark"><small>Copyrights &copy; All Rights Reserved by <a
                                                href="{{Voyager::setting('admin.support_url', 'https://www.vzsite.com')}}">{{Voyager::setting('admin.support_name',
                                                'VZ Technology')}}</a>.</small></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@yield('script')
