.class Lorg/telegram/messenger/query/StickersQuery$26$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$26;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$26;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$26;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$26;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "MasksRemoved"

    const v2, 0x7f0802f1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$26;->val$type:I

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "StickersRemoved"

    const v2, 0x7f080518

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v0, v0, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f080204

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
