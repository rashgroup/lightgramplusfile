.class Lorg/telegram/messenger/CContactsController$13;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;

.field final synthetic val$uid:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$13;->this$0:Lorg/telegram/messenger/CContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$13;->val$uid:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$13;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$13;->val$uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lorg/telegram/messenger/CContactsController;->deleteContactFromPhoneBook(I)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/CContactsController;->access$1500(Lorg/telegram/messenger/CContactsController;I)V

    return-void
.end method
