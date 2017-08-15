.class public Lorg/telegram/ui/Components/HistorySelectorView;
.super Landroid/widget/LinearLayout;
.source "HistorySelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final HISTORY:Ljava/lang/String; = "HISTORY"

.field private static final MAX_COLORS:I = 0x1e

.field private static final PREFS_NAME:Ljava/lang/String; = "RECENT_COLORS"


# instance fields
.field color:I

.field colors:Lorg/json/JSONArray;

.field listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HistorySelectorView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HistorySelectorView;->setColor(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HistorySelectorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->onColorChanged()V

    return-void
.end method

.method private getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->color:I

    return v0
.end method

.method private init()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->readColors()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->makeColorList()V

    return-void
.end method

.method private makeColorList()V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const v0, 0x7f100098

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HistorySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f100096

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HistorySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_1
    if-ltz v4, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f100099

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lorg/telegram/ui/Components/HistorySelectorView$1;

    invoke-direct {v2, p0, v5}, Lorg/telegram/ui/Components/HistorySelectorView$1;-><init>(Lorg/telegram/ui/Components/HistorySelectorView;I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onColorChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    invoke-direct {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method

.method private setColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->color:I

    return-void
.end method


# virtual methods
.method public moveValueToFront(Lorg/json/JSONArray;II)Lorg/json/JSONArray;
    .locals 3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public readColors()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RECENT_COLORS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string/jumbo v2, "HISTORY"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public selectColor(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HistorySelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RECENT_COLORS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {p0, v3, v1, p1}, Lorg/telegram/ui/Components/HistorySelectorView;->moveValueToFront(Lorg/json/JSONArray;II)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "HISTORY"

    iget-object v2, p0, Lorg/telegram/ui/Components/HistorySelectorView;->colors:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HistorySelectorView;->listener:Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;

    return-void
.end method
