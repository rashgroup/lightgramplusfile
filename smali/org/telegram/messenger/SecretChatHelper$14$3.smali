.class Lorg/telegram/messenger/SecretChatHelper$14$3;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$14;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->access$402(Lorg/telegram/messenger/SecretChatHelper;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
