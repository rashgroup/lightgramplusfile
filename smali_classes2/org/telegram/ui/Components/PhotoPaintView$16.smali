.class Lorg/telegram/ui/Components/PhotoPaintView$16;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickerMasksView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1700(Lorg/telegram/ui/Components/PhotoPaintView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public onTypeChanged()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->updateStickersTitle()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1900(Lorg/telegram/ui/Components/PhotoPaintView;)V

    return-void
.end method
