.class public Lorg/telegram/ui/Adapters/CAdapter;
.super Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.source "CAdapter.java"


# instance fields
.field private checkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private isAdmin:Z

.field private mContext:Landroid/content/Context;

.field private needPhonebook:Z

.field private onlyUsers:I

.field private scrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/CAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    iput-object p4, p0, Lorg/telegram/ui/Adapters/CAdapter;->ignoreUsers:Ljava/util/HashMap;

    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 4

    const/4 v2, 0x2

    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_2
    return v0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    const/4 v0, 0x4

    goto :goto_2

    :cond_7
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-eqz v1, :cond_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v1, v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/high16 v2, 0x42900000    # 72.0f

    const/high16 v1, 0x41e00000    # 28.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/CAdapter;->getItemViewType(II)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    if-nez p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p3, v0, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_2
    return-object p3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    if-nez p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Cells/GreySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    if-ne v0, v6, :cond_5

    if-nez p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_0

    if-nez p3, :cond_d

    new-instance v1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x3a

    invoke-direct {v1, v0, v2, v5, v4}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    const v2, -0x575758

    const v3, -0xc47b40

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/UserCell;->setStatusColors(II)V

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v6, :cond_7

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    :goto_4
    iget v2, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v2, v6, :cond_8

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    :goto_5
    iget v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-nez v3, :cond_9

    move v3, v4

    :goto_6
    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v6, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/CAdapter;->checkedMap:Ljava/util/HashMap;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/CAdapter;->scrolling:Z

    if-nez v6, :cond_a

    :goto_7
    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->ignoreUsers:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->ignoreUsers:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    move-object p3, v1

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_4

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_5

    :cond_9
    move v3, v5

    goto :goto_6

    :cond_a
    move v5, v4

    goto :goto_7

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    move-object p3, v1

    goto/16 :goto_2

    :cond_d
    move-object v1, p3

    goto/16 :goto_3
.end method

.method public getItemViewType(II)I
    .locals 8

    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v1, v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    :goto_1
    iget v7, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-nez v7, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    move v0, v2

    :goto_2
    return v0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-eqz v0, :cond_5

    :cond_4
    if-ne p2, v6, :cond_6

    move v0, v4

    goto :goto_2

    :cond_5
    if-ne p2, v4, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    :goto_3
    move v0, v2

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move v0, v6

    goto :goto_2
.end method

.method public getSectionCount()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x2

    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    move-object v2, v0

    :goto_1
    if-nez p2, :cond_6

    new-instance v1, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    :goto_3
    return-object v1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, p2

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public isRowEnabled(II)Z
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v0, v4, :cond_1

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-ne v1, v4, :cond_2

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    :goto_1
    iget v4, p0, Lorg/telegram/ui/Adapters/CAdapter;->onlyUsers:I

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-nez v4, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    move v0, v2

    :goto_2
    move v2, v0

    :cond_0
    :goto_3
    return v2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->needPhonebook:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/CAdapter;->isAdmin:Z

    if-eqz v0, :cond_6

    :cond_5
    if-ne p2, v2, :cond_0

    move v2, v3

    goto :goto_3

    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    move v2, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    move v2, v3

    goto :goto_3
.end method

.method public setCheckedMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Adapters/CAdapter;->checkedMap:Ljava/util/HashMap;

    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/CAdapter;->scrolling:Z

    return-void
.end method
