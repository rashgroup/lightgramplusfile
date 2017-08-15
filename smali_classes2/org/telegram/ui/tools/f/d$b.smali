.class Lorg/telegram/ui/tools/f/d$b;
.super Ljava/lang/Object;
.source "SpecialNotificationsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/f/d$b$d;,
        Lorg/telegram/ui/tools/f/d$b$c;,
        Lorg/telegram/ui/tools/f/d$b$b;,
        Lorg/telegram/ui/tools/f/d$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/d;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v8, -0xff0100

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->b(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    if-ne p3, v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/f/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f080567

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v3, "VibrationDisabled"

    const v4, 0x7f080569

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "SettingsDefault"

    const v4, 0x7f0807a1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "SystemDefault"

    const v4, 0x7f0807ed

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string/jumbo v4, "Short"

    const v5, 0x7f080500

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Long"

    const v5, 0x7f0802ed

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/tools/f/d$b$a;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/f/d$b$a;-><init>(Lorg/telegram/ui/tools/f/d$b;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0800f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/f/d;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->c(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    if-ne p3, v0, :cond_3

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.ringtone.DEFAULT_URI"

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "SpecialNotifications"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v5, "sound_path_sc"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string/jumbo v5, "NoSound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    const-string/jumbo v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    const/16 v1, 0xc

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/tools/f/d;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->d(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/f/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/f/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lorg/telegram/ui/Components/ColorPickerView;

    iget-object v2, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/f/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColorPickerView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "SpecialNotifications"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "color_sc"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "color_sc"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/f/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "LedColor"

    const v4, 0x7f0802d0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "Set"

    const v3, 0x7f0804e4

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/tools/f/d$b$b;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/tools/f/d$b$b;-><init>(Lorg/telegram/ui/tools/f/d$b;Lorg/telegram/ui/Components/ColorPickerView;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "LedDisabled"

    const v1, 0x7f0802d1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/f/d$b$c;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/d$b$c;-><init>(Lorg/telegram/ui/tools/f/d$b;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "Default"

    const v1, 0x7f0801b9

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/f/d$b$d;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/d$b$d;-><init>(Lorg/telegram/ui/tools/f/d$b;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$b;->a:Lorg/telegram/ui/tools/f/d;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/f/d;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, "MessagesLed"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :cond_6
    move-object v2, v1

    goto/16 :goto_1
.end method
