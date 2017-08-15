.class Lorg/telegram/ui/tools/f/d$c;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "SpecialNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/d;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/f/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/tools/f/d$c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->e(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->b(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->c(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/d;->d(Lorg/telegram/ui/tools/f/d;)I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x3

    const v7, -0xff0100

    const/4 v6, 0x0

    const v4, 0x7f080567

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/f/d$c;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_b

    new-instance v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$c;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v2, p0, Lorg/telegram/ui/tools/f/d$c;->b:Landroid/content/Context;

    const-string/jumbo v3, "SpecialNotifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v3}, Lorg/telegram/ui/tools/f/d;->b(Lorg/telegram/ui/tools/f/d;)I

    move-result v3

    if-ne p1, v3, :cond_5

    const-string/jumbo v3, "vibrate_sc"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Vibrate"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SettingsDefault"

    const v4, 0x7f0807a1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    if-ne v2, v5, :cond_2

    const-string/jumbo v2, "Vibrate"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Short"

    const v4, 0x7f080500

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "Vibrate"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VibrationDisabled"

    const v4, 0x7f080569

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_4

    const-string/jumbo v2, "Vibrate"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Long"

    const v4, 0x7f0802ed

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "Vibrate"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SystemDefault"

    const v4, 0x7f0807ed

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/tools/f/d$c;->a:Lorg/telegram/ui/tools/f/d;

    invoke-static {v3}, Lorg/telegram/ui/tools/f/d;->c(Lorg/telegram/ui/tools/f/d;)I

    move-result v3

    if-ne p1, v3, :cond_0

    const-string/jumbo v3, "sound_sc"

    const-string/jumbo v4, "SoundDefault"

    const v5, 0x7f080510

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NoSound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v2, "NoSound"

    const v3, 0x7f080363

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string/jumbo v3, "Sound"

    const v4, 0x7f08050f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    if-ne v0, v5, :cond_a

    if-nez p2, :cond_9

    new-instance v1, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d$c;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    :goto_2
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/TextColorCell;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "SpecialNotifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "color_sc"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "LedColor"

    const v4, 0x7f0802d0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "color_sc"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v3, v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "LedColor"

    const v4, 0x7f0802d0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MessagesLed"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v3, v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_9
    move-object v1, p2

    goto :goto_2

    :cond_a
    move-object v1, p2

    goto/16 :goto_1

    :cond_b
    move-object v1, p2

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
