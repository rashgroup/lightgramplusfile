.class public Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "CountrySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CountrySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountryAdapter"
.end annotation


# instance fields
.field private countries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private sortedCountries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CountrySelectActivity;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "countries.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v3}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    const/4 v4, 0x2

    aget-object v4, v0, v4

    iput-object v4, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iput-object v0, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iget-object v0, v3, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$1;-><init>(Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$2;-><init>(Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;Lorg/telegram/ui/CountrySelectActivity;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getCountries()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object v0

    return-object v0
.end method

.method public getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 3

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getSectionForPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPositionForScrollProgress(F)I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance v1, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setCellHeight(I)V

    :goto_0
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public isEnabled(II)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 5

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->needPhoneCode:Z
    invoke-static {v3}, Lorg/telegram/ui/CountrySelectActivity;->access$700(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 6

    const/high16 v4, 0x42900000    # 72.0f

    const/high16 v2, 0x42580000    # 54.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    move-object v0, v1

    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v0, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    move-object v0, v3

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_3

    :cond_1
    move v2, v1

    goto :goto_4

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
