.class public Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyPhotoViewerProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scaleToFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0

    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0

    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0

    return-void
.end method
