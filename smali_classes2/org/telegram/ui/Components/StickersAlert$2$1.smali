.class Lorg/telegram/ui/Components/StickersAlert$2$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickersAlert$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->reqId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->access$002(Lorg/telegram/ui/Components/StickersAlert;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/StickersAlert;->access$902(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1002(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # invokes: Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1100(Lorg/telegram/ui/Components/StickersAlert;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # invokes: Lorg/telegram/ui/Components/StickersAlert;->updateFields()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "AddStickersNotFound"

    const v3, 0x7f080066

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$2$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$2;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto :goto_1
.end method
