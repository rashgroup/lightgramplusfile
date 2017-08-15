.class public Lnet/hockeyapp/android/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "net.hockeyapp.android.SCREENSHOT"

.field private static final BROADCAST_REQUEST_CODE:I = 0x1

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x1

.field private static currentActivity:Landroid/app/Activity;

.field private static identifier:Ljava/lang/String;

.field private static lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

.field private static notificationActive:Z

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field private static requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field private static urlString:Ljava/lang/String;

.field private static userEmail:Ljava/lang/String;

.field private static userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    sget-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sget-object v0, Lnet/hockeyapp/android/objects/FeedbackUserDataElement;->REQUIRED:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkForAnswersAndNotify(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "net.hockeyapp.android.feedback"

    invoke-virtual {p0, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "idLastMessageSend"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    new-instance v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/hockeyapp/android/FeedbackManager$1;

    invoke-direct {v9, p0}, Lnet/hockeyapp/android/FeedbackManager$1;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v10}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    invoke-virtual {v0, v12}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setShowProgressDialog(Z)V

    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setLastMessageId(I)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private static endNotification()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-object v0
.end method

.method public static getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method

.method public static getRequireUserName()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method

.method private static getURLString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/feedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    sput-object p1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    sput-object p3, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .locals 1

    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    return-void
.end method

.method public static setActivityForScreenshot(Landroid/app/Activity;)V
    .locals 1

    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    if-nez v0, :cond_0

    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->startNotification()V

    :cond_0
    return-void
.end method

.method public static setRequireUserEmail(Lnet/hockeyapp/android/objects/FeedbackUserDataElement;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-void
.end method

.method public static setRequireUserName(Lnet/hockeyapp/android/objects/FeedbackUserDataElement;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->userEmail:Ljava/lang/String;

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->userName:Ljava/lang/String;

    return-void
.end method

.method public static varargs showFeedbackActivity(Landroid/content/Context;Landroid/os/Bundle;[Landroid/net/Uri;)V
    .locals 4

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    if-eqz v1, :cond_0

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/FeedbackManagerListener;->getFeedbackActivityClass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    :cond_1
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    if-eqz v1, :cond_4

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-virtual {v1}, Lnet/hockeyapp/android/FeedbackManagerListener;->shouldCreateNewFeedbackThread()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v0, "url"

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "forceNewThread"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "initialUserName"

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->userName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "initialUserEmail"

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->userEmail:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "initialAttachments"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs showFeedbackActivity(Landroid/content/Context;[Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/hockeyapp/android/FeedbackManager;->showFeedbackActivity(Landroid/content/Context;Landroid/os/Bundle;[Landroid/net/Uri;)V

    return-void
.end method

.method private static startNotification()V
    .locals 7

    const/4 v6, 0x1

    sput-boolean v6, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ic_menu_camera"

    const-string/jumbo v3, "drawable"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "net.hockeyapp.android.SCREENSHOT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v6, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v3, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string/jumbo v4, "HockeyApp Feedback"

    const-string/jumbo v5, "Take a screenshot for your feedback."

    invoke-static {v3, v2, v4, v5, v1}, Lnet/hockeyapp/android/utils/Util;->createNotification(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lnet/hockeyapp/android/FeedbackManager$3;

    invoke-direct {v0}, Lnet/hockeyapp/android/FeedbackManager$3;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    :cond_0
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "net.hockeyapp.android.SCREENSHOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static takeScreenshot(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x1

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/hockeyapp/android/FeedbackManager$2;

    invoke-direct {v0, v3, p0}, Lnet/hockeyapp/android/FeedbackManager$2;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    new-array v3, v1, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/FeedbackManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManager$1;)V

    new-instance v3, Landroid/media/MediaScannerConnection;

    sget-object v4, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->setConnection(Landroid/media/MediaScannerConnection;)V

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->connect()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screenshot \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' is available in gallery."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static unregister()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public static unsetCurrentActivityForScreenshot(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eq v0, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->endNotification()V

    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    goto :goto_0
.end method
