.class Lorg/telegram/ui/SessionsActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "TerminateAllSessions"

    const v2, 0x7f080528

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->finishFragment()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "UnknownError"

    const v2, 0x7f080544

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
