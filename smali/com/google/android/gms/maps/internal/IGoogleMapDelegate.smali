.class public interface abstract Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/internal/zzb;
.end method

.method public abstract addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzc;
.end method

.method public abstract addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/internal/zzf;
.end method

.method public abstract addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/internal/zzg;
.end method

.method public abstract addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.end method

.method public abstract addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzh;
.end method

.method public abstract animateCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract animateCameraWithCallback(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/internal/zzb;)V
.end method

.method public abstract animateCameraWithDurationAndCallback(Lcom/google/android/gms/dynamic/IObjectWrapper;ILcom/google/android/gms/maps/internal/zzb;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
.end method

.method public abstract getFocusedBuilding()Lcom/google/android/gms/maps/model/internal/zzd;
.end method

.method public abstract getMapAsync(Lcom/google/android/gms/maps/internal/zzt;)V
.end method

.method public abstract getMapType()I
.end method

.method public abstract getMaxZoomLevel()F
.end method

.method public abstract getMinZoomLevel()F
.end method

.method public abstract getMyLocation()Landroid/location/Location;
.end method

.method public abstract getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.end method

.method public abstract getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.end method

.method public abstract isBuildingsEnabled()Z
.end method

.method public abstract isIndoorEnabled()Z
.end method

.method public abstract isMyLocationEnabled()Z
.end method

.method public abstract isTrafficEnabled()Z
.end method

.method public abstract moveCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onEnterAmbient(Landroid/os/Bundle;)V
.end method

.method public abstract onExitAmbient()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetMinMaxZoomPreference()V
.end method

.method public abstract setBuildingsEnabled(Z)V
.end method

.method public abstract setContentDescription(Ljava/lang/String;)V
.end method

.method public abstract setIndoorEnabled(Z)Z
.end method

.method public abstract setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/zzd;)V
.end method

.method public abstract setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V
.end method

.method public abstract setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V
.end method

.method public abstract setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
.end method

.method public abstract setMapType(I)V
.end method

.method public abstract setMaxZoomPreference(F)V
.end method

.method public abstract setMinZoomPreference(F)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/zze;)V
.end method

.method public abstract setOnCameraIdleListener(Lcom/google/android/gms/maps/internal/zzf;)V
.end method

.method public abstract setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/internal/zzg;)V
.end method

.method public abstract setOnCameraMoveListener(Lcom/google/android/gms/maps/internal/zzh;)V
.end method

.method public abstract setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/internal/zzi;)V
.end method

.method public abstract setOnCircleClickListener(Lcom/google/android/gms/maps/internal/zzj;)V
.end method

.method public abstract setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/internal/zzk;)V
.end method

.method public abstract setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/zzl;)V
.end method

.method public abstract setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/zzm;)V
.end method

.method public abstract setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/internal/zzn;)V
.end method

.method public abstract setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/internal/zzo;)V
.end method

.method public abstract setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzq;)V
.end method

.method public abstract setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/zzr;)V
.end method

.method public abstract setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/zzs;)V
.end method

.method public abstract setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/zzu;)V
.end method

.method public abstract setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/zzv;)V
.end method

.method public abstract setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/zzw;)V
.end method

.method public abstract setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/zzx;)V
.end method

.method public abstract setOnPoiClickListener(Lcom/google/android/gms/maps/internal/zzy;)V
.end method

.method public abstract setOnPolygonClickListener(Lcom/google/android/gms/maps/internal/zzz;)V
.end method

.method public abstract setOnPolylineClickListener(Lcom/google/android/gms/maps/internal/zzaa;)V
.end method

.method public abstract setPadding(IIII)V
.end method

.method public abstract setTrafficEnabled(Z)V
.end method

.method public abstract setWatermarkEnabled(Z)V
.end method

.method public abstract snapshot(Lcom/google/android/gms/maps/internal/zzag;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract snapshotForTest(Lcom/google/android/gms/maps/internal/zzag;)V
.end method

.method public abstract stopAnimation()V
.end method

.method public abstract useViewLifecycleWhenInFragment()Z
.end method
