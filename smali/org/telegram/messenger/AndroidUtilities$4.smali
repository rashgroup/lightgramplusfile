.class final Lorg/telegram/messenger/AndroidUtilities$4;
.super Landroid/database/ContentObserver;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$number:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$number:Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->access$000(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$4;->val$number:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeLoginPhoneCall(Ljava/lang/String;Z)V

    return-void
.end method
