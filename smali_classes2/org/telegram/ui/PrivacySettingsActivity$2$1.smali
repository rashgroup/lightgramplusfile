.class Lorg/telegram/ui/PrivacySettingsActivity$2$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 v0, 0x1e

    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v3, "Loading"

    const v4, 0x7f0802df

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    invoke-direct {v3, p0, v2, v1}, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_0
    if-ne p2, v4, :cond_1

    const/16 v0, 0x5a

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 v0, 0xb6

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    const/16 v0, 0x16d

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
