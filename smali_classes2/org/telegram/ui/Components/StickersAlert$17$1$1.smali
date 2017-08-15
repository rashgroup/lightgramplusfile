.class Lorg/telegram/ui/Components/StickersAlert$17$1$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$17$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$17$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "AddMasksInstalled"

    const v4, 0x7f08005f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lorg/telegram/ui/Components/StickersArchiveAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;->sets:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StickersArchiveAlert;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "AddStickersInstalled"

    const v4, 0x7f080065

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$17$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$17$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$17;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$17;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "ErrorOccurred"

    const v4, 0x7f080204

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method
