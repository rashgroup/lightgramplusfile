.class public Lorg/telegram/ui/TaleSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "TaleSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private ActiveAnswer:I

.field private AnswerMachineRow:I

.field private EditBox:I

.field private HiddeMenuRow:I

.field private HiddenHelpRow:I

.field private HiddenKeyRow:I

.field private HidenTypeRow:I

.field private PaintingRow:I

.field private ShamsiRow:I

.field private StickerDoneRow:I

.field private VoiceDoneRow:I

.field private channelConutTypeRow:I

.field private empty01:I

.field private empty02:I

.field private empty03:I

.field private empty04:I

.field private groupPopupNotificationRow:I

.field private groupSectionRow:I

.field private hidenNumberRow:I

.field private listSecurityRow:I

.field private listView:Landroid/widget/ListView;

.field private messageSectionRow:I

.field private reseting:Z

.field private rowCount:I

.field private rtlConutTypeRow:I

.field private securitySectionRow:I

.field private setFontSelect:I

.field private setFontSelect2:I

.field private setNewPasswordRow:I

.field private setNewRowTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput-boolean v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->reseting:Z

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->VoiceDoneRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->PaintingRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setFontSelect:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setNewPasswordRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listSecurityRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->ActiveAnswer:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->hidenNumberRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->messageSectionRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->securitySectionRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->groupSectionRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setNewRowTheme:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->StickerDoneRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->AnswerMachineRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty01:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty02:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty03:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty04:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->EditBox:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HiddenHelpRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->ShamsiRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HidenTypeRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->channelConutTypeRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HiddeMenuRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rtlConutTypeRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TaleSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TaleSettingsActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NotificationsAndSounds"

    const v2, 0x7f0808a9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TaleSettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TaleSettingsActivity$1;-><init>(Lorg/telegram/ui/TaleSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/TaleSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/TaleSettingsActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TaleSettingsActivity$2;-><init>(Lorg/telegram/ui/TaleSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SoundDefault"

    const v2, 0x7f080510

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "hoshyar_sh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/TaleSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->securitySectionRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->hidenNumberRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setNewPasswordRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HiddenKeyRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HiddenHelpRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty01:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->messageSectionRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->VoiceDoneRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->PaintingRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->StickerDoneRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->ShamsiRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HidenTypeRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->channelConutTypeRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->HiddeMenuRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty02:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->groupSectionRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->groupPopupNotificationRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty03:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->AnswerMachineRow:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->ActiveAnswer:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->EditBox:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->empty04:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setNewRowTheme:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setFontSelect:I

    iget v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TaleSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TaleSettingsActivity;->setFontSelect2:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    return-void
.end method
