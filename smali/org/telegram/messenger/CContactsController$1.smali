.class Lorg/telegram/messenger/CContactsController$1;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$1;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$1;->this$0:Lorg/telegram/messenger/CContactsController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/CContactsController;->completedRequestsCount:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/CContactsController;->access$002(Lorg/telegram/messenger/CContactsController;I)I

    return-void
.end method
