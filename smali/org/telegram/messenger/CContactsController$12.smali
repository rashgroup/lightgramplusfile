.class Lorg/telegram/messenger/CContactsController$12;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->performWriteContactsToPhoneBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;

.field final synthetic val$contactsArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$12;->this$0:Lorg/telegram/messenger/CContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$12;->val$contactsArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$12;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$12;->val$contactsArray:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/CContactsController;->performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/CContactsController;->access$1400(Lorg/telegram/messenger/CContactsController;Ljava/util/ArrayList;)V

    return-void
.end method