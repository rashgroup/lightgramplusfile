.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->nextPressed:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1502(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v1, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->val$params:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ChangePhoneActivity;->access$1600(Lorg/telegram/ui/ChangePhoneActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangePhoneActivity;->needHideProgress()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v1, v1, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v1, v1, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    iget-object v4, v4, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->val$params:Landroid/os/Bundle;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0
.end method
