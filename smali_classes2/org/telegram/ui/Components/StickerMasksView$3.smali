.class Lorg/telegram/ui/Components/StickerMasksView$3;
.super Ljava/lang/Object;
.source "StickerMasksView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$3;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$3;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$000(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$3;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredHeight()I

    move-result v3

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$3;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$400(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/StickerPreviewViewer;->onTouch(Landroid/view/MotionEvent;Landroid/view/View;ILjava/lang/Object;Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method
