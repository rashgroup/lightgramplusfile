.class Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v0, v0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ContactsController;->setDeleteAccountTTL(I)V

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    iget-object v0, v0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    iget-object v0, v0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
