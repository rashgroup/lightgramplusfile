.class Lorg/telegram/messenger/CContactsController$3;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->checkContacts()V
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

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$3;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$3;->this$0:Lorg/telegram/messenger/CContactsController;

    # invokes: Lorg/telegram/messenger/CContactsController;->checkContactsInternal()Z
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$200(Lorg/telegram/messenger/CContactsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/CContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/CContactsController;->getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/CContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V

    :cond_0
    return-void
.end method
