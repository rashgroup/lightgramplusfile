.class final Lorg/telegram/messenger/MediaController$24;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$albumsSorted:Ljava/util/ArrayList;

.field final synthetic val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field final synthetic val$cameraAlbumIdFinal:Ljava/lang/Integer;

.field final synthetic val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

.field final synthetic val$guid:I

.field final synthetic val$videoAlbumsSorted:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController$24;->val$guid:I

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$24;->val$albumsSorted:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$24;->val$cameraAlbumIdFinal:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$24;->val$videoAlbumsSorted:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$24;->val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController$24;->val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$24;->val$guid:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$24;->val$albumsSorted:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$24;->val$cameraAlbumIdFinal:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$24;->val$videoAlbumsSorted:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$24;->val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$24;->val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/16 v6, 0x3e8

    # invokes: Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->access$6000(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$6102(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$24;->val$allPhotosAlbumFinal:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sput-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/messenger/MediaController$24;->val$guid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$24;->val$albumsSorted:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$24;->val$cameraAlbumIdFinal:Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$24;->val$videoAlbumsSorted:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$24;->val$cameraAlbumVideoIdFinal:Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
