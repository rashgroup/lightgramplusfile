.class public Lco/ronash/pushe/receiver/BootAndScreenReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/app/AlarmManager;

.field private b:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pushe"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "ACTION_SCREEN_ON "

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v4}, Lco/ronash/pushe/a;->a(Landroid/content/Context;Z)V

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->a:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/ronash/pushe/receiver/AppUsageAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->b:Landroid/app/PendingIntent;

    iget-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->a:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    iget-object v6, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->b:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "pushe"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "ACTION_SCREEN_OFF "

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v3}, Lco/ronash/pushe/a;->a(Landroid/content/Context;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/ronash/pushe/receiver/AppUsageAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->b:Landroid/app/PendingIntent;

    iget-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->a:Landroid/app/AlarmManager;

    iget-object v0, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->a:Landroid/app/AlarmManager;

    iget-object v1, p0, Lco/ronash/pushe/receiver/BootAndScreenReceiver;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lco/ronash/pushe/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lco/ronash/pushe/Pushe;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
