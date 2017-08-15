.class public Lco/ronash/pushe/h/a/z;
.super Lco/ronash/pushe/h/a/i;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/z;)I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/h/a/z;->b:I

    return v0
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/z;I)I
    .locals 0

    iput p1, p0, Lco/ronash/pushe/h/a/z;->b:I

    return p1
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/z;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public d()Lco/ronash/pushe/h/a/j;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/a/j;->l:Lco/ronash/pushe/h/a/j;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/h/a/z;->b:I

    return v0
.end method
