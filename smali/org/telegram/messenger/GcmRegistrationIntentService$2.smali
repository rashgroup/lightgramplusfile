.class Lorg/telegram/messenger/GcmRegistrationIntentService$2;
.super Ljava/lang/Object;
.source "GcmRegistrationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmRegistrationIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

.field final synthetic val$failCount:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmRegistrationIntentService;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    iput p2, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->val$failCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "failCount"

    iget v2, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->val$failCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/GcmRegistrationIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
