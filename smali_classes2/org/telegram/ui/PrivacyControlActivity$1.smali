.class Lorg/telegram/ui/PrivacyControlActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyControlActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "privacyAlertShowed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v2

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "WhoCanAddMeInfo"

    const v3, 0x7f08059c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_1
    const-string/jumbo v2, "AppName"

    const v3, 0x7f080086

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v2, "OK"

    const v3, 0x7f0803c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity$1$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/PrivacyControlActivity$1$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$1;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v0, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PrivacyControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "CustomHelp"

    const v3, 0x7f0801a4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # invokes: Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$200(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto/16 :goto_0
.end method
