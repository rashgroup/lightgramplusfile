.class final Lorg/telegram/messenger/AndroidUtilities$5;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$5;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->access$102(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/AndroidUtilities$5;->val$number:Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->access$000(ZLjava/lang/String;)V

    return-void
.end method
