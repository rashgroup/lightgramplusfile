.class public Lorg/telegram/ui/ActionBar/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    }
.end annotation


# static fields
.field public static FLAG_AB_AM_BACKGROUND:I

.field public static FLAG_AB_AM_ITEMSCOLOR:I

.field public static FLAG_AB_AM_SELECTORCOLOR:I

.field public static FLAG_AB_AM_TOPBACKGROUND:I

.field public static FLAG_AB_ITEMSCOLOR:I

.field public static FLAG_AB_SEARCH:I

.field public static FLAG_AB_SEARCHPLACEHOLDER:I

.field public static FLAG_AB_SELECTORCOLOR:I

.field public static FLAG_AB_SUBMENUBACKGROUND:I

.field public static FLAG_AB_SUBMENUITEM:I

.field public static FLAG_AB_SUBTITLECOLOR:I

.field public static FLAG_AB_TITLECOLOR:I

.field public static FLAG_BACKGROUND:I

.field public static FLAG_BACKGROUNDFILTER:I

.field public static FLAG_CELLBACKGROUNDCOLOR:I

.field public static FLAG_CHECKBOX:I

.field public static FLAG_CHECKBOXCHECK:I

.field public static FLAG_CHECKTAG:I

.field public static FLAG_CURSORCOLOR:I

.field public static FLAG_DRAWABLESELECTEDSTATE:I

.field public static FLAG_FASTSCROLL:I

.field public static FLAG_HINTTEXTCOLOR:I

.field public static FLAG_IMAGECOLOR:I

.field public static FLAG_LINKCOLOR:I

.field public static FLAG_LISTGLOWCOLOR:I

.field public static FLAG_PROGRESSBAR:I

.field public static FLAG_SECTIONS:I

.field public static FLAG_SELECTOR:I

.field public static FLAG_SELECTORWHITE:I

.field public static FLAG_SERVICEBACKGROUND:I

.field public static FLAG_TEXTCOLOR:I

.field public static FLAG_USEBACKGROUNDDRAWABLE:I


# instance fields
.field private cachedFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private changeFlags:I

.field private currentColor:I

.field private currentKey:Ljava/lang/String;

.field private defaultColor:I

.field private delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

.field private drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

.field private listClasses:[Ljava/lang/Class;

.field private listClassesFieldName:[Ljava/lang/String;

.field private paintToUpdate:[Landroid/graphics/Paint;

.field private previousColor:I

.field private previousIsDefault:[Z

.field private viewToInvalidate:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v0, 0x2

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v0, 0x4

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v0, 0x8

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v0, 0x10

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/16 v0, 0x20

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v0, 0x40

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v0, 0x80

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v0, 0x100

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v0, 0x200

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/16 v0, 0x400

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const/16 v0, 0x800

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/16 v0, 0x1000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v0, 0x2000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/16 v0, 0x4000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const v0, 0x8000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/high16 v0, 0x10000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    const/high16 v0, 0x20000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    const/high16 v0, 0x40000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/high16 v0, 0x80000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/high16 v0, 0x100000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/high16 v0, 0x200000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/high16 v0, 0x400000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/high16 v0, 0x800000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/high16 v0, 0x1000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/high16 v0, 0x2000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/high16 v0, 0x4000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/high16 v0, 0x8000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/high16 v0, 0x10000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/high16 v0, 0x20000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/high16 v0, -0x80000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    if-eqz p4, :cond_0

    new-array v0, v1, [Landroid/graphics/Paint;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    return-void
.end method

.method private processViewColor(Landroid/view/View;I)V
    .locals 9

    const/4 v6, 0x1

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v3, v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    instance-of v2, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_1
    :goto_1
    move v5, v6

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-eqz v1, :cond_2c

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v1, v1, v3

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v7, v1

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v5, :cond_b

    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_b

    :cond_3
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_4
    instance-of v2, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_6
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    move v5, v6

    goto/16 :goto_2

    :cond_7
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    move v5, v6

    goto/16 :goto_2

    :cond_8
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    move v5, v6

    goto/16 :goto_2

    :cond_a
    move v5, v4

    goto/16 :goto_2

    :cond_b
    :try_start_1
    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_c

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_c
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2e

    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_2e

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    :goto_4
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_d

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_d

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_d
    :try_start_2
    instance-of v2, v1, Lorg/telegram/ui/Components/Switch;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->checkColorFilters()V

    goto/16 :goto_3

    :cond_e
    instance-of v2, v1, Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v2, :cond_10

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_f

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/EditTextCaption;

    move-object v2, v0

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    check-cast v1, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->setHintTextColor(I)V

    goto/16 :goto_3

    :cond_f
    check-cast v1, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->setTextColor(I)V

    goto/16 :goto_3

    :cond_10
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_12

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_11

    check-cast v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    goto/16 :goto_3

    :cond_11
    check-cast v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_12
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_15

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_13

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    move v1, v4

    :goto_5
    array-length v5, v2

    if-ge v1, v5, :cond_3

    aget-object v5, v2, v1

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, p2, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_14

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput p2, v2, Landroid/text/TextPaint;->linkColor:I

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_3

    :cond_14
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_15
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_16

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_16
    instance-of v2, v1, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v2, :cond_19

    check-cast v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v2, :cond_18

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_17

    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_17
    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_18
    if-eqz v1, :cond_3

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_19
    instance-of v2, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_21

    instance-of v2, v1, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v2, :cond_1b

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1a

    check-cast v1, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/LetterDrawable;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_1a
    check-cast v1, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/LetterDrawable;->setColor(I)V

    goto/16 :goto_3

    :cond_1b
    instance-of v2, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v2, :cond_1d

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1c

    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_1c
    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_1d
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_1e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_20

    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_20

    :cond_1e
    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1f

    move v2, v6

    :goto_6
    invoke-static {v1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto/16 :goto_3

    :cond_1f
    move v2, v4

    goto :goto_6

    :cond_20
    check-cast v1, Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_21
    instance-of v2, v1, Lorg/telegram/ui/Components/CheckBox;

    if-eqz v2, :cond_23

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_22

    check-cast v1, Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/CheckBox;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_22
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/CheckBox;->setCheckColor(I)V

    goto/16 :goto_3

    :cond_23
    instance-of v2, v1, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    if-eqz v2, :cond_24

    check-cast v1, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    goto/16 :goto_3

    :cond_24
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_25

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_25
    instance-of v2, v1, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v2, :cond_27

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_26

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    move-object v2, v0

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RadioButton;->setBackgroundColor(I)V

    check-cast v1, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto/16 :goto_3

    :cond_26
    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    move-object v2, v0

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RadioButton;->setCheckedColor(I)V

    check-cast v1, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto/16 :goto_3

    :cond_27
    instance-of v2, v1, Landroid/text/TextPaint;

    if-eqz v2, :cond_29

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_28

    check-cast v1, Landroid/text/TextPaint;

    iput p2, v1, Landroid/text/TextPaint;->linkColor:I

    goto/16 :goto_3

    :cond_28
    check-cast v1, Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_3

    :cond_29
    instance-of v2, v1, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_2b

    iget v2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_2a

    check-cast v1, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_3

    :cond_2a
    check-cast v1, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_3

    :cond_2b
    instance-of v2, v1, Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_2c
    instance-of v1, p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    goto/16 :goto_3

    :cond_2d
    return-void

    :cond_2e
    move-object v1, v2

    goto/16 :goto_4

    :cond_2f
    move v5, v6

    goto/16 :goto_2
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSetColor()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(IZ)V
    .locals 7

    const/16 v6, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->setColor(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    instance-of v0, v0, Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    check-cast v0, Landroid/text/TextPaint;

    iput p1, v0, Landroid/text/TextPaint;->linkColor:I

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v1, :cond_3c

    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_25

    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_a

    instance-of v0, v1, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_27

    instance-of v0, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_27

    :cond_9
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_26

    move v0, v3

    :goto_5
    invoke-static {v1, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    :cond_b
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    :cond_c
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    :cond_d
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    :cond_e
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    :cond_f
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    :cond_10
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    :cond_11
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    :cond_12
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    :cond_13
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    :cond_14
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(I)V

    :cond_15
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(I)V

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    :cond_17
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    :cond_18
    :goto_8
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1a
    :goto_9
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    :cond_1b
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    :cond_1c
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1d
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_20

    instance-of v0, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_20

    :cond_1f
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_30

    move v0, v3

    :goto_b
    invoke-static {v1, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_20
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_21

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    const-string/jumbo v3, "listSelectorSDK21"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(I)V

    :cond_22
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->updateFastScrollColors()V

    :cond_23
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_24

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    :cond_24
    iget v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getHeaders()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_33

    move v3, v2

    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_33

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d

    :cond_25
    check-cast v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_26
    move v0, v2

    goto/16 :goto_5

    :cond_27
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_6

    :cond_28
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setProgressBarColor(I)V

    goto/16 :goto_7

    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v0, :cond_2b

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_8

    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_8

    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    goto/16 :goto_8

    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/ChatBigEmptyView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_2f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_a

    :cond_30
    move v0, v2

    goto/16 :goto_b

    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_c

    :cond_32
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_20

    goto/16 :goto_c

    :cond_33
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getHeadersCache()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_34

    move v3, v2

    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_34

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_e

    :cond_34
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    :cond_35
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_10
    if-ge v2, v1, :cond_38

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v0, :cond_35

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_37
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_38
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    :cond_39
    iput p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor(I)V

    :cond_3a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3b
    return-void

    :cond_3c
    move-object v1, v0

    goto/16 :goto_4
.end method

.method public setDefaultColor()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public setPreviousColor()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public startEditing()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return-void
.end method
