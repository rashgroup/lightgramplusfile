.class Lorg/telegram/ui/Components/StickerMasksView$7;
.super Ljava/lang/Object;
.source "StickerMasksView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksView;->onAttachedToWindow()V
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

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$7;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$7;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$900(Lorg/telegram/ui/Components/StickerMasksView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$7;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->reloadStickersAdapter()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1000(Lorg/telegram/ui/Components/StickerMasksView;)V

    return-void
.end method
