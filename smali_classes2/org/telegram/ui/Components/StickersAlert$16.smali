.class Lorg/telegram/ui/Components/StickersAlert$16;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$16;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$16;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$16;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$16;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    return-void
.end method
