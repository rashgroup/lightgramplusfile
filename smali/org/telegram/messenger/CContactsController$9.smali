.class Lorg/telegram/messenger/CContactsController$9;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/CContactsController$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$9;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/CContactsController$Contact;

    check-cast p2, Lorg/telegram/messenger/CContactsController$Contact;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/CContactsController$9;->compare(Lorg/telegram/messenger/CContactsController$Contact;Lorg/telegram/messenger/CContactsController$Contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/CContactsController$Contact;Lorg/telegram/messenger/CContactsController$Contact;)I
    .locals 3

    iget-object v0, p1, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    :cond_0
    iget-object v1, p2, Lorg/telegram/messenger/CContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p2, Lorg/telegram/messenger/CContactsController$Contact;->last_name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
