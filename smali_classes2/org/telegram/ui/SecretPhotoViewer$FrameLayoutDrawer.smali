.class Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;
.super Landroid/widget/FrameLayout;
.source "SecretPhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretPhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretPhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v0

    # invokes: Lorg/telegram/ui/SecretPhotoViewer;->onDraw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/SecretPhotoViewer;->access$000(Lorg/telegram/ui/SecretPhotoViewer;Landroid/graphics/Canvas;)V

    return-void
.end method
