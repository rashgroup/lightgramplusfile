.class Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;-><init>()V

    const-string/jumbo v1, "Forgot password"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;->reason:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method
