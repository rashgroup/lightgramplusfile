.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # invokes: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboardInternal()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    goto :goto_0
.end method
